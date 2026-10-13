# sandbox_telemetry_parse — 2026-10-13 20:53:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1218834 lines=3187
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2359 |
| `chrome_profile_sample` | 820 |
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
| `chromeBrowserPssKb` | {'int': 2359} |
| `chromeGpuPssKb` | {'int': 2359} |
| `chromeOtherPssKb` | {'int': 2359} |
| `chromeProcesses` | {'int': 2359} |
| `chromeProfiles` | {'int': 2359} |
| `chromeRendererMaxPssKb` | {'int': 2359} |
| `chromeRendererPssKb` | {'int': 2359} |
| `chromeRenderers` | {'int': 2359} |
| `chromeTabs` | {'int': 2359} |
| `chromeTabsProbedProfiles` | {'int': 2359} |
| `chromeUtilityPssKb` | {'int': 2359} |
| `desktopPssKb` | {'int': 2359} |
| `hostPssKb` | {'int': 2359} |
| `kind` | {'str': 2359} |
| `memAvailableKb` | {'int': 2359} |
| `memTotalKb` | {'int': 2359} |
| `otherPssKb` | {'int': 2359} |
| `processes` | {'int': 2359} |
| `pssFallbackProcesses` | {'int': 2359} |

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
| `cpuMillicores` | {'int': 819} |
| `display` | {'int': 820} |
| `kind` | {'str': 820} |
| `processes` | {'int': 820} |
| `pssKb` | {'int': 820} |
| `rendererMaxPssKb` | {'int': 820} |
| `renderers` | {'int': 820} |
| `tabs` | {'int': 820} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
