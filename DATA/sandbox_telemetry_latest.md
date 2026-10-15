# sandbox_telemetry_parse — 2026-10-16 01:50:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1164490 lines=2588
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2571 |
| `chrome_profile_sample` | 9 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2571} |
| `chromeGpuPssKb` | {'int': 2571} |
| `chromeOtherPssKb` | {'int': 2571} |
| `chromeProcesses` | {'int': 2571} |
| `chromeProfiles` | {'int': 2571} |
| `chromeRendererMaxPssKb` | {'int': 2571} |
| `chromeRendererPssKb` | {'int': 2571} |
| `chromeRenderers` | {'int': 2571} |
| `chromeTabs` | {'int': 2571} |
| `chromeTabsProbedProfiles` | {'int': 2571} |
| `chromeUtilityPssKb` | {'int': 2571} |
| `desktopPssKb` | {'int': 2571} |
| `hostPssKb` | {'int': 2571} |
| `kind` | {'str': 2571} |
| `memAvailableKb` | {'int': 2571} |
| `memTotalKb` | {'int': 2571} |
| `otherPssKb` | {'int': 2571} |
| `processes` | {'int': 2571} |
| `pssFallbackProcesses` | {'int': 2571} |

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
| `cpuMillicores` | {'int': 8} |
| `display` | {'int': 9} |
| `kind` | {'str': 9} |
| `processes` | {'int': 9} |
| `pssKb` | {'int': 9} |
| `rendererMaxPssKb` | {'int': 9} |
| `renderers` | {'int': 9} |
| `tabs` | {'int': 9} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
