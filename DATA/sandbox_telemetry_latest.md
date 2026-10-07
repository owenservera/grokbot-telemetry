# sandbox_telemetry_parse — 2026-10-07 07:20:29 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=878629 lines=1931
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1926 |
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
| `chromeBrowserPssKb` | {'int': 1926} |
| `chromeGpuPssKb` | {'int': 1926} |
| `chromeOtherPssKb` | {'int': 1926} |
| `chromeProcesses` | {'int': 1926} |
| `chromeProfiles` | {'int': 1926} |
| `chromeRendererMaxPssKb` | {'int': 1926} |
| `chromeRendererPssKb` | {'int': 1926} |
| `chromeRenderers` | {'int': 1926} |
| `chromeTabs` | {'int': 1926} |
| `chromeTabsProbedProfiles` | {'int': 1926} |
| `chromeUtilityPssKb` | {'int': 1926} |
| `desktopPssKb` | {'int': 1926} |
| `hostPssKb` | {'int': 1926} |
| `kind` | {'str': 1926} |
| `memAvailableKb` | {'int': 1926} |
| `memTotalKb` | {'int': 1926} |
| `otherPssKb` | {'int': 1926} |
| `processes` | {'int': 1926} |
| `pssFallbackProcesses` | {'int': 1926} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
