# sandbox_telemetry_parse — 2026-10-15 01:06:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=583450 lines=1295
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1290 |
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
| `chromeBrowserPssKb` | {'int': 1290} |
| `chromeGpuPssKb` | {'int': 1290} |
| `chromeOtherPssKb` | {'int': 1290} |
| `chromeProcesses` | {'int': 1290} |
| `chromeProfiles` | {'int': 1290} |
| `chromeRendererMaxPssKb` | {'int': 1290} |
| `chromeRendererPssKb` | {'int': 1290} |
| `chromeRenderers` | {'int': 1290} |
| `chromeTabs` | {'int': 1290} |
| `chromeTabsProbedProfiles` | {'int': 1290} |
| `chromeUtilityPssKb` | {'int': 1290} |
| `desktopPssKb` | {'int': 1290} |
| `hostPssKb` | {'int': 1290} |
| `kind` | {'str': 1290} |
| `memAvailableKb` | {'int': 1290} |
| `memTotalKb` | {'int': 1290} |
| `otherPssKb` | {'int': 1290} |
| `processes` | {'int': 1290} |
| `pssFallbackProcesses` | {'int': 1290} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
