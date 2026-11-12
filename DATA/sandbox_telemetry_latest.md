# sandbox_telemetry_parse — 2026-11-12 19:45:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2298043 lines=5086
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5077 |
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
| `chromeBrowserPssKb` | {'int': 5077} |
| `chromeGpuPssKb` | {'int': 5077} |
| `chromeOtherPssKb` | {'int': 5077} |
| `chromeProcesses` | {'int': 5077} |
| `chromeProfiles` | {'int': 5077} |
| `chromeRendererMaxPssKb` | {'int': 5077} |
| `chromeRendererPssKb` | {'int': 5077} |
| `chromeRenderers` | {'int': 5077} |
| `chromeTabs` | {'int': 5077} |
| `chromeTabsProbedProfiles` | {'int': 5077} |
| `chromeUtilityPssKb` | {'int': 5077} |
| `desktopPssKb` | {'int': 5077} |
| `hostPssKb` | {'int': 5077} |
| `kind` | {'str': 5077} |
| `memAvailableKb` | {'int': 5077} |
| `memTotalKb` | {'int': 5077} |
| `otherPssKb` | {'int': 5077} |
| `processes` | {'int': 5077} |
| `pssFallbackProcesses` | {'int': 5077} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
