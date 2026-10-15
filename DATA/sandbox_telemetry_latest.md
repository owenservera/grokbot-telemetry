# sandbox_telemetry_parse — 2026-10-15 15:40:14 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=928326 lines=2058
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2053 |
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
| `chromeBrowserPssKb` | {'int': 2053} |
| `chromeGpuPssKb` | {'int': 2053} |
| `chromeOtherPssKb` | {'int': 2053} |
| `chromeProcesses` | {'int': 2053} |
| `chromeProfiles` | {'int': 2053} |
| `chromeRendererMaxPssKb` | {'int': 2053} |
| `chromeRendererPssKb` | {'int': 2053} |
| `chromeRenderers` | {'int': 2053} |
| `chromeTabs` | {'int': 2053} |
| `chromeTabsProbedProfiles` | {'int': 2053} |
| `chromeUtilityPssKb` | {'int': 2053} |
| `desktopPssKb` | {'int': 2053} |
| `hostPssKb` | {'int': 2053} |
| `kind` | {'str': 2053} |
| `memAvailableKb` | {'int': 2053} |
| `memTotalKb` | {'int': 2053} |
| `otherPssKb` | {'int': 2053} |
| `processes` | {'int': 2053} |
| `pssFallbackProcesses` | {'int': 2053} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
