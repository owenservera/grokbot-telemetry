# sandbox_telemetry_parse — 2026-10-16 08:28:07 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=279643 lines=1045
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 684 |
| `memory_sample` | 352 |
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
| `chromeBrowserPssKb` | {'int': 352} |
| `chromeGpuPssKb` | {'int': 352} |
| `chromeOtherPssKb` | {'int': 352} |
| `chromeProcesses` | {'int': 352} |
| `chromeProfiles` | {'int': 352} |
| `chromeRendererMaxPssKb` | {'int': 352} |
| `chromeRendererPssKb` | {'int': 352} |
| `chromeRenderers` | {'int': 352} |
| `chromeTabs` | {'int': 352} |
| `chromeTabsProbedProfiles` | {'int': 352} |
| `chromeUtilityPssKb` | {'int': 352} |
| `desktopPssKb` | {'int': 352} |
| `hostPssKb` | {'int': 352} |
| `kind` | {'str': 352} |
| `memAvailableKb` | {'int': 352} |
| `memTotalKb` | {'int': 352} |
| `otherPssKb` | {'int': 352} |
| `processes` | {'int': 352} |
| `pssFallbackProcesses` | {'int': 352} |

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
| `cpuMillicores` | {'int': 681} |
| `display` | {'int': 684} |
| `kind` | {'str': 684} |
| `processes` | {'int': 684} |
| `pssKb` | {'int': 684} |
| `rendererMaxPssKb` | {'int': 684} |
| `renderers` | {'int': 684} |
| `tabs` | {'int': 683} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
