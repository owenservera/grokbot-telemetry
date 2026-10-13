# sandbox_telemetry_parse — 2026-10-13 13:40:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1114102 lines=2859
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2195 |
| `chrome_profile_sample` | 656 |
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
| `chromeBrowserPssKb` | {'int': 2195} |
| `chromeGpuPssKb` | {'int': 2195} |
| `chromeOtherPssKb` | {'int': 2195} |
| `chromeProcesses` | {'int': 2195} |
| `chromeProfiles` | {'int': 2195} |
| `chromeRendererMaxPssKb` | {'int': 2195} |
| `chromeRendererPssKb` | {'int': 2195} |
| `chromeRenderers` | {'int': 2195} |
| `chromeTabs` | {'int': 2195} |
| `chromeTabsProbedProfiles` | {'int': 2195} |
| `chromeUtilityPssKb` | {'int': 2195} |
| `desktopPssKb` | {'int': 2195} |
| `hostPssKb` | {'int': 2195} |
| `kind` | {'str': 2195} |
| `memAvailableKb` | {'int': 2195} |
| `memTotalKb` | {'int': 2195} |
| `otherPssKb` | {'int': 2195} |
| `processes` | {'int': 2195} |
| `pssFallbackProcesses` | {'int': 2195} |

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
| `cpuMillicores` | {'int': 655} |
| `display` | {'int': 656} |
| `kind` | {'str': 656} |
| `processes` | {'int': 656} |
| `pssKb` | {'int': 656} |
| `rendererMaxPssKb` | {'int': 656} |
| `renderers` | {'int': 656} |
| `tabs` | {'int': 656} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
