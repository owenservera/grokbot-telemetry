# sandbox_telemetry_parse — 2026-10-17 00:20:10 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=952359 lines=3559
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2360 |
| `memory_sample` | 1190 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1190} |
| `chromeGpuPssKb` | {'int': 1190} |
| `chromeOtherPssKb` | {'int': 1190} |
| `chromeProcesses` | {'int': 1190} |
| `chromeProfiles` | {'int': 1190} |
| `chromeRendererMaxPssKb` | {'int': 1190} |
| `chromeRendererPssKb` | {'int': 1190} |
| `chromeRenderers` | {'int': 1190} |
| `chromeTabs` | {'int': 1190} |
| `chromeTabsProbedProfiles` | {'int': 1190} |
| `chromeUtilityPssKb` | {'int': 1190} |
| `desktopPssKb` | {'int': 1190} |
| `hostPssKb` | {'int': 1190} |
| `kind` | {'str': 1190} |
| `memAvailableKb` | {'int': 1190} |
| `memTotalKb` | {'int': 1190} |
| `otherPssKb` | {'int': 1190} |
| `processes` | {'int': 1190} |
| `pssFallbackProcesses` | {'int': 1190} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

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
| `cpuMillicores` | {'int': 2357} |
| `display` | {'int': 2360} |
| `kind` | {'str': 2360} |
| `processes` | {'int': 2360} |
| `pssKb` | {'int': 2360} |
| `rendererMaxPssKb` | {'int': 2360} |
| `renderers` | {'int': 2360} |
| `tabs` | {'int': 2359} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
