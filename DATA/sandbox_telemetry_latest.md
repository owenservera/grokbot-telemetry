# sandbox_telemetry_parse — 2026-10-14 00:04:46 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1315235 lines=3489
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2510 |
| `chrome_profile_sample` | 971 |
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
| `chromeBrowserPssKb` | {'int': 2510} |
| `chromeGpuPssKb` | {'int': 2510} |
| `chromeOtherPssKb` | {'int': 2510} |
| `chromeProcesses` | {'int': 2510} |
| `chromeProfiles` | {'int': 2510} |
| `chromeRendererMaxPssKb` | {'int': 2510} |
| `chromeRendererPssKb` | {'int': 2510} |
| `chromeRenderers` | {'int': 2510} |
| `chromeTabs` | {'int': 2510} |
| `chromeTabsProbedProfiles` | {'int': 2510} |
| `chromeUtilityPssKb` | {'int': 2510} |
| `desktopPssKb` | {'int': 2510} |
| `hostPssKb` | {'int': 2510} |
| `kind` | {'str': 2510} |
| `memAvailableKb` | {'int': 2510} |
| `memTotalKb` | {'int': 2510} |
| `otherPssKb` | {'int': 2510} |
| `processes` | {'int': 2510} |
| `pssFallbackProcesses` | {'int': 2510} |

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
| `cpuMillicores` | {'int': 970} |
| `display` | {'int': 971} |
| `kind` | {'str': 971} |
| `processes` | {'int': 971} |
| `pssKb` | {'int': 971} |
| `rendererMaxPssKb` | {'int': 971} |
| `renderers` | {'int': 971} |
| `tabs` | {'int': 971} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
