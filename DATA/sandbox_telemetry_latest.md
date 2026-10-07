# sandbox_telemetry_parse — 2026-10-07 05:32:22 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=831661 lines=1828
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1823 |
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
| `chromeBrowserPssKb` | {'int': 1823} |
| `chromeGpuPssKb` | {'int': 1823} |
| `chromeOtherPssKb` | {'int': 1823} |
| `chromeProcesses` | {'int': 1823} |
| `chromeProfiles` | {'int': 1823} |
| `chromeRendererMaxPssKb` | {'int': 1823} |
| `chromeRendererPssKb` | {'int': 1823} |
| `chromeRenderers` | {'int': 1823} |
| `chromeTabs` | {'int': 1823} |
| `chromeTabsProbedProfiles` | {'int': 1823} |
| `chromeUtilityPssKb` | {'int': 1823} |
| `desktopPssKb` | {'int': 1823} |
| `hostPssKb` | {'int': 1823} |
| `kind` | {'str': 1823} |
| `memAvailableKb` | {'int': 1823} |
| `memTotalKb` | {'int': 1823} |
| `otherPssKb` | {'int': 1823} |
| `processes` | {'int': 1823} |
| `pssFallbackProcesses` | {'int': 1823} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
