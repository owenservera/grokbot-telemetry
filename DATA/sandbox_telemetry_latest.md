# sandbox_telemetry_parse — 2026-10-14 03:52:03 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=81730 lines=185
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 180 |
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
| `chromeBrowserPssKb` | {'int': 180} |
| `chromeGpuPssKb` | {'int': 180} |
| `chromeOtherPssKb` | {'int': 180} |
| `chromeProcesses` | {'int': 180} |
| `chromeProfiles` | {'int': 180} |
| `chromeRendererMaxPssKb` | {'int': 180} |
| `chromeRendererPssKb` | {'int': 180} |
| `chromeRenderers` | {'int': 180} |
| `chromeTabs` | {'int': 180} |
| `chromeTabsProbedProfiles` | {'int': 180} |
| `chromeUtilityPssKb` | {'int': 180} |
| `desktopPssKb` | {'int': 180} |
| `hostPssKb` | {'int': 180} |
| `kind` | {'str': 180} |
| `memAvailableKb` | {'int': 180} |
| `memTotalKb` | {'int': 180} |
| `otherPssKb` | {'int': 180} |
| `processes` | {'int': 180} |
| `pssFallbackProcesses` | {'int': 180} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
