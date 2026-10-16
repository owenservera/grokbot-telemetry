# sandbox_telemetry_parse — 2026-10-16 11:02:56 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=383195 lines=1432
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 942 |
| `memory_sample` | 481 |
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
| `chromeBrowserPssKb` | {'int': 481} |
| `chromeGpuPssKb` | {'int': 481} |
| `chromeOtherPssKb` | {'int': 481} |
| `chromeProcesses` | {'int': 481} |
| `chromeProfiles` | {'int': 481} |
| `chromeRendererMaxPssKb` | {'int': 481} |
| `chromeRendererPssKb` | {'int': 481} |
| `chromeRenderers` | {'int': 481} |
| `chromeTabs` | {'int': 481} |
| `chromeTabsProbedProfiles` | {'int': 481} |
| `chromeUtilityPssKb` | {'int': 481} |
| `desktopPssKb` | {'int': 481} |
| `hostPssKb` | {'int': 481} |
| `kind` | {'str': 481} |
| `memAvailableKb` | {'int': 481} |
| `memTotalKb` | {'int': 481} |
| `otherPssKb` | {'int': 481} |
| `processes` | {'int': 481} |
| `pssFallbackProcesses` | {'int': 481} |

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
| `cpuMillicores` | {'int': 939} |
| `display` | {'int': 942} |
| `kind` | {'str': 942} |
| `processes` | {'int': 942} |
| `pssKb` | {'int': 942} |
| `rendererMaxPssKb` | {'int': 942} |
| `renderers` | {'int': 942} |
| `tabs` | {'int': 941} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
