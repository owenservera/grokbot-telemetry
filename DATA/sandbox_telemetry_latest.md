# sandbox_telemetry_parse — 2026-10-13 08:01:16 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=934403 lines=2295
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1913 |
| `chrome_profile_sample` | 374 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1913} |
| `chromeGpuPssKb` | {'int': 1913} |
| `chromeOtherPssKb` | {'int': 1913} |
| `chromeProcesses` | {'int': 1913} |
| `chromeProfiles` | {'int': 1913} |
| `chromeRendererMaxPssKb` | {'int': 1913} |
| `chromeRendererPssKb` | {'int': 1913} |
| `chromeRenderers` | {'int': 1913} |
| `chromeTabs` | {'int': 1913} |
| `chromeTabsProbedProfiles` | {'int': 1913} |
| `chromeUtilityPssKb` | {'int': 1913} |
| `desktopPssKb` | {'int': 1913} |
| `hostPssKb` | {'int': 1913} |
| `kind` | {'str': 1913} |
| `memAvailableKb` | {'int': 1913} |
| `memTotalKb` | {'int': 1913} |
| `otherPssKb` | {'int': 1913} |
| `processes` | {'int': 1913} |
| `pssFallbackProcesses` | {'int': 1913} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 373} |
| `display` | {'int': 374} |
| `kind` | {'str': 374} |
| `processes` | {'int': 374} |
| `pssKb` | {'int': 374} |
| `rendererMaxPssKb` | {'int': 374} |
| `renderers` | {'int': 374} |
| `tabs` | {'int': 374} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
