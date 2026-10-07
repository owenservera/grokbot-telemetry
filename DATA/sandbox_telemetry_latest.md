# sandbox_telemetry_parse — 2026-10-07 02:40:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=754114 lines=1658
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1653 |
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
| `chromeBrowserPssKb` | {'int': 1653} |
| `chromeGpuPssKb` | {'int': 1653} |
| `chromeOtherPssKb` | {'int': 1653} |
| `chromeProcesses` | {'int': 1653} |
| `chromeProfiles` | {'int': 1653} |
| `chromeRendererMaxPssKb` | {'int': 1653} |
| `chromeRendererPssKb` | {'int': 1653} |
| `chromeRenderers` | {'int': 1653} |
| `chromeTabs` | {'int': 1653} |
| `chromeTabsProbedProfiles` | {'int': 1653} |
| `chromeUtilityPssKb` | {'int': 1653} |
| `desktopPssKb` | {'int': 1653} |
| `hostPssKb` | {'int': 1653} |
| `kind` | {'str': 1653} |
| `memAvailableKb` | {'int': 1653} |
| `memTotalKb` | {'int': 1653} |
| `otherPssKb` | {'int': 1653} |
| `processes` | {'int': 1653} |
| `pssFallbackProcesses` | {'int': 1653} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
