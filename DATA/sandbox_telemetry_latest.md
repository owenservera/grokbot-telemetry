# sandbox_telemetry_parse — 2026-10-16 14:45:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=546111 lines=2041
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1348 |
| `memory_sample` | 684 |
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
| `chromeBrowserPssKb` | {'int': 684} |
| `chromeGpuPssKb` | {'int': 684} |
| `chromeOtherPssKb` | {'int': 684} |
| `chromeProcesses` | {'int': 684} |
| `chromeProfiles` | {'int': 684} |
| `chromeRendererMaxPssKb` | {'int': 684} |
| `chromeRendererPssKb` | {'int': 684} |
| `chromeRenderers` | {'int': 684} |
| `chromeTabs` | {'int': 684} |
| `chromeTabsProbedProfiles` | {'int': 684} |
| `chromeUtilityPssKb` | {'int': 684} |
| `desktopPssKb` | {'int': 684} |
| `hostPssKb` | {'int': 684} |
| `kind` | {'str': 684} |
| `memAvailableKb` | {'int': 684} |
| `memTotalKb` | {'int': 684} |
| `otherPssKb` | {'int': 684} |
| `processes` | {'int': 684} |
| `pssFallbackProcesses` | {'int': 684} |

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
| `cpuMillicores` | {'int': 1345} |
| `display` | {'int': 1348} |
| `kind` | {'str': 1348} |
| `processes` | {'int': 1348} |
| `pssKb` | {'int': 1348} |
| `rendererMaxPssKb` | {'int': 1348} |
| `renderers` | {'int': 1348} |
| `tabs` | {'int': 1347} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
