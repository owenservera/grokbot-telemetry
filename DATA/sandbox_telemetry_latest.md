# sandbox_telemetry_parse — 2026-10-16 08:23:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=275628 lines=1030
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 674 |
| `memory_sample` | 347 |
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
| `chromeBrowserPssKb` | {'int': 347} |
| `chromeGpuPssKb` | {'int': 347} |
| `chromeOtherPssKb` | {'int': 347} |
| `chromeProcesses` | {'int': 347} |
| `chromeProfiles` | {'int': 347} |
| `chromeRendererMaxPssKb` | {'int': 347} |
| `chromeRendererPssKb` | {'int': 347} |
| `chromeRenderers` | {'int': 347} |
| `chromeTabs` | {'int': 347} |
| `chromeTabsProbedProfiles` | {'int': 347} |
| `chromeUtilityPssKb` | {'int': 347} |
| `desktopPssKb` | {'int': 347} |
| `hostPssKb` | {'int': 347} |
| `kind` | {'str': 347} |
| `memAvailableKb` | {'int': 347} |
| `memTotalKb` | {'int': 347} |
| `otherPssKb` | {'int': 347} |
| `processes` | {'int': 347} |
| `pssFallbackProcesses` | {'int': 347} |

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
| `cpuMillicores` | {'int': 671} |
| `display` | {'int': 674} |
| `kind` | {'str': 674} |
| `processes` | {'int': 674} |
| `pssKb` | {'int': 674} |
| `rendererMaxPssKb` | {'int': 674} |
| `renderers` | {'int': 674} |
| `tabs` | {'int': 673} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
