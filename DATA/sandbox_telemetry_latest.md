# sandbox_telemetry_parse — 2026-10-07 04:24:57 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=801109 lines=1761
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1756 |
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
| `chromeBrowserPssKb` | {'int': 1756} |
| `chromeGpuPssKb` | {'int': 1756} |
| `chromeOtherPssKb` | {'int': 1756} |
| `chromeProcesses` | {'int': 1756} |
| `chromeProfiles` | {'int': 1756} |
| `chromeRendererMaxPssKb` | {'int': 1756} |
| `chromeRendererPssKb` | {'int': 1756} |
| `chromeRenderers` | {'int': 1756} |
| `chromeTabs` | {'int': 1756} |
| `chromeTabsProbedProfiles` | {'int': 1756} |
| `chromeUtilityPssKb` | {'int': 1756} |
| `desktopPssKb` | {'int': 1756} |
| `hostPssKb` | {'int': 1756} |
| `kind` | {'str': 1756} |
| `memAvailableKb` | {'int': 1756} |
| `memTotalKb` | {'int': 1756} |
| `otherPssKb` | {'int': 1756} |
| `processes` | {'int': 1756} |
| `pssFallbackProcesses` | {'int': 1756} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
