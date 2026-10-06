# sandbox_telemetry_parse — 2026-10-06 08:22:50 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=258290 lines=571
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 566 |
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
| `chromeBrowserPssKb` | {'int': 566} |
| `chromeGpuPssKb` | {'int': 566} |
| `chromeOtherPssKb` | {'int': 566} |
| `chromeProcesses` | {'int': 566} |
| `chromeProfiles` | {'int': 566} |
| `chromeRendererMaxPssKb` | {'int': 566} |
| `chromeRendererPssKb` | {'int': 566} |
| `chromeRenderers` | {'int': 566} |
| `chromeTabs` | {'int': 566} |
| `chromeTabsProbedProfiles` | {'int': 566} |
| `chromeUtilityPssKb` | {'int': 566} |
| `desktopPssKb` | {'int': 566} |
| `hostPssKb` | {'int': 566} |
| `kind` | {'str': 566} |
| `memAvailableKb` | {'int': 566} |
| `memTotalKb` | {'int': 566} |
| `otherPssKb` | {'int': 566} |
| `processes` | {'int': 566} |
| `pssFallbackProcesses` | {'int': 566} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
