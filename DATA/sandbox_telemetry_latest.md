# sandbox_telemetry_parse — 2026-10-13 12:16:09 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1069408 lines=2719
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2125 |
| `chrome_profile_sample` | 586 |
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
| `chromeBrowserPssKb` | {'int': 2125} |
| `chromeGpuPssKb` | {'int': 2125} |
| `chromeOtherPssKb` | {'int': 2125} |
| `chromeProcesses` | {'int': 2125} |
| `chromeProfiles` | {'int': 2125} |
| `chromeRendererMaxPssKb` | {'int': 2125} |
| `chromeRendererPssKb` | {'int': 2125} |
| `chromeRenderers` | {'int': 2125} |
| `chromeTabs` | {'int': 2125} |
| `chromeTabsProbedProfiles` | {'int': 2125} |
| `chromeUtilityPssKb` | {'int': 2125} |
| `desktopPssKb` | {'int': 2125} |
| `hostPssKb` | {'int': 2125} |
| `kind` | {'str': 2125} |
| `memAvailableKb` | {'int': 2125} |
| `memTotalKb` | {'int': 2125} |
| `otherPssKb` | {'int': 2125} |
| `processes` | {'int': 2125} |
| `pssFallbackProcesses` | {'int': 2125} |

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
| `cpuMillicores` | {'int': 585} |
| `display` | {'int': 586} |
| `kind` | {'str': 586} |
| `processes` | {'int': 586} |
| `pssKb` | {'int': 586} |
| `rendererMaxPssKb` | {'int': 586} |
| `renderers` | {'int': 586} |
| `tabs` | {'int': 586} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
