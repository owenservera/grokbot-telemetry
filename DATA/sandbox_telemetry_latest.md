# sandbox_telemetry_parse — 2026-10-13 22:30:10 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1261623 lines=3321
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2426 |
| `chrome_profile_sample` | 887 |
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
| `chromeBrowserPssKb` | {'int': 2426} |
| `chromeGpuPssKb` | {'int': 2426} |
| `chromeOtherPssKb` | {'int': 2426} |
| `chromeProcesses` | {'int': 2426} |
| `chromeProfiles` | {'int': 2426} |
| `chromeRendererMaxPssKb` | {'int': 2426} |
| `chromeRendererPssKb` | {'int': 2426} |
| `chromeRenderers` | {'int': 2426} |
| `chromeTabs` | {'int': 2426} |
| `chromeTabsProbedProfiles` | {'int': 2426} |
| `chromeUtilityPssKb` | {'int': 2426} |
| `desktopPssKb` | {'int': 2426} |
| `hostPssKb` | {'int': 2426} |
| `kind` | {'str': 2426} |
| `memAvailableKb` | {'int': 2426} |
| `memTotalKb` | {'int': 2426} |
| `otherPssKb` | {'int': 2426} |
| `processes` | {'int': 2426} |
| `pssFallbackProcesses` | {'int': 2426} |

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
| `cpuMillicores` | {'int': 886} |
| `display` | {'int': 887} |
| `kind` | {'str': 887} |
| `processes` | {'int': 887} |
| `pssKb` | {'int': 887} |
| `rendererMaxPssKb` | {'int': 887} |
| `renderers` | {'int': 887} |
| `tabs` | {'int': 887} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
