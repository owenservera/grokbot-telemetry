# sandbox_telemetry_parse — 2026-10-16 07:46:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=247534 lines=925
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 604 |
| `memory_sample` | 312 |
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
| `chromeBrowserPssKb` | {'int': 312} |
| `chromeGpuPssKb` | {'int': 312} |
| `chromeOtherPssKb` | {'int': 312} |
| `chromeProcesses` | {'int': 312} |
| `chromeProfiles` | {'int': 312} |
| `chromeRendererMaxPssKb` | {'int': 312} |
| `chromeRendererPssKb` | {'int': 312} |
| `chromeRenderers` | {'int': 312} |
| `chromeTabs` | {'int': 312} |
| `chromeTabsProbedProfiles` | {'int': 312} |
| `chromeUtilityPssKb` | {'int': 312} |
| `desktopPssKb` | {'int': 312} |
| `hostPssKb` | {'int': 312} |
| `kind` | {'str': 312} |
| `memAvailableKb` | {'int': 312} |
| `memTotalKb` | {'int': 312} |
| `otherPssKb` | {'int': 312} |
| `processes` | {'int': 312} |
| `pssFallbackProcesses` | {'int': 312} |

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
| `cpuMillicores` | {'int': 601} |
| `display` | {'int': 604} |
| `kind` | {'str': 604} |
| `processes` | {'int': 604} |
| `pssKb` | {'int': 604} |
| `rendererMaxPssKb` | {'int': 604} |
| `renderers` | {'int': 604} |
| `tabs` | {'int': 603} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
