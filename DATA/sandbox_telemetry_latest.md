# sandbox_telemetry_parse — 2026-10-06 06:18:36 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=201746 lines=447
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 442 |
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
| `chromeBrowserPssKb` | {'int': 442} |
| `chromeGpuPssKb` | {'int': 442} |
| `chromeOtherPssKb` | {'int': 442} |
| `chromeProcesses` | {'int': 442} |
| `chromeProfiles` | {'int': 442} |
| `chromeRendererMaxPssKb` | {'int': 442} |
| `chromeRendererPssKb` | {'int': 442} |
| `chromeRenderers` | {'int': 442} |
| `chromeTabs` | {'int': 442} |
| `chromeTabsProbedProfiles` | {'int': 442} |
| `chromeUtilityPssKb` | {'int': 442} |
| `desktopPssKb` | {'int': 442} |
| `hostPssKb` | {'int': 442} |
| `kind` | {'str': 442} |
| `memAvailableKb` | {'int': 442} |
| `memTotalKb` | {'int': 442} |
| `otherPssKb` | {'int': 442} |
| `processes` | {'int': 442} |
| `pssFallbackProcesses` | {'int': 442} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
