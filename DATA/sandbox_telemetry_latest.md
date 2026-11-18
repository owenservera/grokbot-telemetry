# sandbox_telemetry_parse — 2026-11-18 17:52:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=916863 lines=2035
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2026 |
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
| `chromeBrowserPssKb` | {'int': 2026} |
| `chromeGpuPssKb` | {'int': 2026} |
| `chromeOtherPssKb` | {'int': 2026} |
| `chromeProcesses` | {'int': 2026} |
| `chromeProfiles` | {'int': 2026} |
| `chromeRendererMaxPssKb` | {'int': 2026} |
| `chromeRendererPssKb` | {'int': 2026} |
| `chromeRenderers` | {'int': 2026} |
| `chromeTabs` | {'int': 2026} |
| `chromeTabsProbedProfiles` | {'int': 2026} |
| `chromeUtilityPssKb` | {'int': 2026} |
| `desktopPssKb` | {'int': 2026} |
| `hostPssKb` | {'int': 2026} |
| `kind` | {'str': 2026} |
| `memAvailableKb` | {'int': 2026} |
| `memTotalKb` | {'int': 2026} |
| `otherPssKb` | {'int': 2026} |
| `processes` | {'int': 2026} |
| `pssFallbackProcesses` | {'int': 2026} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
