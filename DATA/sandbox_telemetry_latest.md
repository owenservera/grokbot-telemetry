# sandbox_telemetry_parse — 2026-10-13 23:35:06 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1296728 lines=3431
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2481 |
| `chrome_profile_sample` | 942 |
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
| `chromeBrowserPssKb` | {'int': 2481} |
| `chromeGpuPssKb` | {'int': 2481} |
| `chromeOtherPssKb` | {'int': 2481} |
| `chromeProcesses` | {'int': 2481} |
| `chromeProfiles` | {'int': 2481} |
| `chromeRendererMaxPssKb` | {'int': 2481} |
| `chromeRendererPssKb` | {'int': 2481} |
| `chromeRenderers` | {'int': 2481} |
| `chromeTabs` | {'int': 2481} |
| `chromeTabsProbedProfiles` | {'int': 2481} |
| `chromeUtilityPssKb` | {'int': 2481} |
| `desktopPssKb` | {'int': 2481} |
| `hostPssKb` | {'int': 2481} |
| `kind` | {'str': 2481} |
| `memAvailableKb` | {'int': 2481} |
| `memTotalKb` | {'int': 2481} |
| `otherPssKb` | {'int': 2481} |
| `processes` | {'int': 2481} |
| `pssFallbackProcesses` | {'int': 2481} |

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
| `cpuMillicores` | {'int': 941} |
| `display` | {'int': 942} |
| `kind` | {'str': 942} |
| `processes` | {'int': 942} |
| `pssKb` | {'int': 942} |
| `rendererMaxPssKb` | {'int': 942} |
| `renderers` | {'int': 942} |
| `tabs` | {'int': 942} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
