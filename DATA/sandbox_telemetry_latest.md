# sandbox_telemetry_parse — 2026-10-06 13:31:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=396458 lines=874
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 869 |
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
| `chromeBrowserPssKb` | {'int': 869} |
| `chromeGpuPssKb` | {'int': 869} |
| `chromeOtherPssKb` | {'int': 869} |
| `chromeProcesses` | {'int': 869} |
| `chromeProfiles` | {'int': 869} |
| `chromeRendererMaxPssKb` | {'int': 869} |
| `chromeRendererPssKb` | {'int': 869} |
| `chromeRenderers` | {'int': 869} |
| `chromeTabs` | {'int': 869} |
| `chromeTabsProbedProfiles` | {'int': 869} |
| `chromeUtilityPssKb` | {'int': 869} |
| `desktopPssKb` | {'int': 869} |
| `hostPssKb` | {'int': 869} |
| `kind` | {'str': 869} |
| `memAvailableKb` | {'int': 869} |
| `memTotalKb` | {'int': 869} |
| `otherPssKb` | {'int': 869} |
| `processes` | {'int': 869} |
| `pssFallbackProcesses` | {'int': 869} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
