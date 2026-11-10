# sandbox_telemetry_parse — 2026-11-10 04:24:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=986493 lines=2188
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2179 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 2179} |
| `chromeGpuPssKb` | {'int': 2179} |
| `chromeOtherPssKb` | {'int': 2179} |
| `chromeProcesses` | {'int': 2179} |
| `chromeProfiles` | {'int': 2179} |
| `chromeRendererMaxPssKb` | {'int': 2179} |
| `chromeRendererPssKb` | {'int': 2179} |
| `chromeRenderers` | {'int': 2179} |
| `chromeTabs` | {'int': 2179} |
| `chromeTabsProbedProfiles` | {'int': 2179} |
| `chromeUtilityPssKb` | {'int': 2179} |
| `desktopPssKb` | {'int': 2179} |
| `hostPssKb` | {'int': 2179} |
| `kind` | {'str': 2179} |
| `memAvailableKb` | {'int': 2179} |
| `memTotalKb` | {'int': 2179} |
| `otherPssKb` | {'int': 2179} |
| `processes` | {'int': 2179} |
| `pssFallbackProcesses` | {'int': 2179} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
