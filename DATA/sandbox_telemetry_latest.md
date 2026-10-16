# sandbox_telemetry_parse — 2026-10-16 04:19:48 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=83916 lines=313
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 196 |
| `memory_sample` | 108 |
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
| `chromeBrowserPssKb` | {'int': 108} |
| `chromeGpuPssKb` | {'int': 108} |
| `chromeOtherPssKb` | {'int': 108} |
| `chromeProcesses` | {'int': 108} |
| `chromeProfiles` | {'int': 108} |
| `chromeRendererMaxPssKb` | {'int': 108} |
| `chromeRendererPssKb` | {'int': 108} |
| `chromeRenderers` | {'int': 108} |
| `chromeTabs` | {'int': 108} |
| `chromeTabsProbedProfiles` | {'int': 108} |
| `chromeUtilityPssKb` | {'int': 108} |
| `desktopPssKb` | {'int': 108} |
| `hostPssKb` | {'int': 108} |
| `kind` | {'str': 108} |
| `memAvailableKb` | {'int': 108} |
| `memTotalKb` | {'int': 108} |
| `otherPssKb` | {'int': 108} |
| `processes` | {'int': 108} |
| `pssFallbackProcesses` | {'int': 108} |

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
| `cpuMillicores` | {'int': 193} |
| `display` | {'int': 196} |
| `kind` | {'str': 196} |
| `processes` | {'int': 196} |
| `pssKb` | {'int': 196} |
| `rendererMaxPssKb` | {'int': 196} |
| `renderers` | {'int': 196} |
| `tabs` | {'int': 195} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
