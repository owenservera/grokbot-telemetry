# sandbox_telemetry_parse — 2026-10-07 08:01:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=897325 lines=1972
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1967 |
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
| `chromeBrowserPssKb` | {'int': 1967} |
| `chromeGpuPssKb` | {'int': 1967} |
| `chromeOtherPssKb` | {'int': 1967} |
| `chromeProcesses` | {'int': 1967} |
| `chromeProfiles` | {'int': 1967} |
| `chromeRendererMaxPssKb` | {'int': 1967} |
| `chromeRendererPssKb` | {'int': 1967} |
| `chromeRenderers` | {'int': 1967} |
| `chromeTabs` | {'int': 1967} |
| `chromeTabsProbedProfiles` | {'int': 1967} |
| `chromeUtilityPssKb` | {'int': 1967} |
| `desktopPssKb` | {'int': 1967} |
| `hostPssKb` | {'int': 1967} |
| `kind` | {'str': 1967} |
| `memAvailableKb` | {'int': 1967} |
| `memTotalKb` | {'int': 1967} |
| `otherPssKb` | {'int': 1967} |
| `processes` | {'int': 1967} |
| `pssFallbackProcesses` | {'int': 1967} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
