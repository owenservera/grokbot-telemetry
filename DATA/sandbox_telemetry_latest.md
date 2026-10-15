# sandbox_telemetry_parse — 2026-10-15 15:24:01 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=921546 lines=2043
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2038 |
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
| `chromeBrowserPssKb` | {'int': 2038} |
| `chromeGpuPssKb` | {'int': 2038} |
| `chromeOtherPssKb` | {'int': 2038} |
| `chromeProcesses` | {'int': 2038} |
| `chromeProfiles` | {'int': 2038} |
| `chromeRendererMaxPssKb` | {'int': 2038} |
| `chromeRendererPssKb` | {'int': 2038} |
| `chromeRenderers` | {'int': 2038} |
| `chromeTabs` | {'int': 2038} |
| `chromeTabsProbedProfiles` | {'int': 2038} |
| `chromeUtilityPssKb` | {'int': 2038} |
| `desktopPssKb` | {'int': 2038} |
| `hostPssKb` | {'int': 2038} |
| `kind` | {'str': 2038} |
| `memAvailableKb` | {'int': 2038} |
| `memTotalKb` | {'int': 2038} |
| `otherPssKb` | {'int': 2038} |
| `processes` | {'int': 2038} |
| `pssFallbackProcesses` | {'int': 2038} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
