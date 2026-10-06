# sandbox_telemetry_parse — 2026-10-06 03:06:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=115106 lines=257
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 252 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 252} |
| `chromeGpuPssKb` | {'int': 252} |
| `chromeOtherPssKb` | {'int': 252} |
| `chromeProcesses` | {'int': 252} |
| `chromeProfiles` | {'int': 252} |
| `chromeRendererMaxPssKb` | {'int': 252} |
| `chromeRendererPssKb` | {'int': 252} |
| `chromeRenderers` | {'int': 252} |
| `chromeTabs` | {'int': 252} |
| `chromeTabsProbedProfiles` | {'int': 252} |
| `chromeUtilityPssKb` | {'int': 252} |
| `desktopPssKb` | {'int': 252} |
| `hostPssKb` | {'int': 252} |
| `kind` | {'str': 252} |
| `memAvailableKb` | {'int': 252} |
| `memTotalKb` | {'int': 252} |
| `otherPssKb` | {'int': 252} |
| `processes` | {'int': 252} |
| `pssFallbackProcesses` | {'int': 252} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
