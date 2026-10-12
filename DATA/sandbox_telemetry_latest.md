# sandbox_telemetry_parse — 2026-10-12 22:32:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=681100 lines=1511
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1506 |
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
| `chromeBrowserPssKb` | {'int': 1506} |
| `chromeGpuPssKb` | {'int': 1506} |
| `chromeOtherPssKb` | {'int': 1506} |
| `chromeProcesses` | {'int': 1506} |
| `chromeProfiles` | {'int': 1506} |
| `chromeRendererMaxPssKb` | {'int': 1506} |
| `chromeRendererPssKb` | {'int': 1506} |
| `chromeRenderers` | {'int': 1506} |
| `chromeTabs` | {'int': 1506} |
| `chromeTabsProbedProfiles` | {'int': 1506} |
| `chromeUtilityPssKb` | {'int': 1506} |
| `desktopPssKb` | {'int': 1506} |
| `hostPssKb` | {'int': 1506} |
| `kind` | {'str': 1506} |
| `memAvailableKb` | {'int': 1506} |
| `memTotalKb` | {'int': 1506} |
| `otherPssKb` | {'int': 1506} |
| `processes` | {'int': 1506} |
| `pssFallbackProcesses` | {'int': 1506} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
