# sandbox_telemetry_parse — 2026-11-24 13:35:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2305503 lines=5110
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5095 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 5095} |
| `chromeGpuPssKb` | {'int': 5095} |
| `chromeOtherPssKb` | {'int': 5095} |
| `chromeProcesses` | {'int': 5095} |
| `chromeProfiles` | {'int': 5095} |
| `chromeRendererMaxPssKb` | {'int': 5095} |
| `chromeRendererPssKb` | {'int': 5095} |
| `chromeRenderers` | {'int': 5095} |
| `chromeTabs` | {'int': 5095} |
| `chromeTabsProbedProfiles` | {'int': 5095} |
| `chromeUtilityPssKb` | {'int': 5095} |
| `desktopPssKb` | {'int': 5095} |
| `hostPssKb` | {'int': 5095} |
| `kind` | {'str': 5095} |
| `memAvailableKb` | {'int': 5095} |
| `memTotalKb` | {'int': 5095} |
| `otherPssKb` | {'int': 5095} |
| `processes` | {'int': 5095} |
| `pssFallbackProcesses` | {'int': 5095} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
