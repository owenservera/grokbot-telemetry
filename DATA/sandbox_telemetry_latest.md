# sandbox_telemetry_parse — 2026-10-14 21:33:40 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=499378 lines=1109
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1104 |
| `boot_stage` | 3 |
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
| `chromeBrowserPssKb` | {'int': 1104} |
| `chromeGpuPssKb` | {'int': 1104} |
| `chromeOtherPssKb` | {'int': 1104} |
| `chromeProcesses` | {'int': 1104} |
| `chromeProfiles` | {'int': 1104} |
| `chromeRendererMaxPssKb` | {'int': 1104} |
| `chromeRendererPssKb` | {'int': 1104} |
| `chromeRenderers` | {'int': 1104} |
| `chromeTabs` | {'int': 1104} |
| `chromeTabsProbedProfiles` | {'int': 1104} |
| `chromeUtilityPssKb` | {'int': 1104} |
| `desktopPssKb` | {'int': 1104} |
| `hostPssKb` | {'int': 1104} |
| `kind` | {'str': 1104} |
| `memAvailableKb` | {'int': 1104} |
| `memTotalKb` | {'int': 1104} |
| `otherPssKb` | {'int': 1104} |
| `processes` | {'int': 1104} |
| `pssFallbackProcesses` | {'int': 1104} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
