# sandbox_telemetry_parse — 2026-11-06 21:34:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=178965 lines=403
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 394 |
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
| `chromeBrowserPssKb` | {'int': 394} |
| `chromeGpuPssKb` | {'int': 394} |
| `chromeOtherPssKb` | {'int': 394} |
| `chromeProcesses` | {'int': 394} |
| `chromeProfiles` | {'int': 394} |
| `chromeRendererMaxPssKb` | {'int': 394} |
| `chromeRendererPssKb` | {'int': 394} |
| `chromeRenderers` | {'int': 394} |
| `chromeTabs` | {'int': 394} |
| `chromeTabsProbedProfiles` | {'int': 394} |
| `chromeUtilityPssKb` | {'int': 394} |
| `desktopPssKb` | {'int': 394} |
| `hostPssKb` | {'int': 394} |
| `kind` | {'str': 394} |
| `memAvailableKb` | {'int': 394} |
| `memTotalKb` | {'int': 394} |
| `otherPssKb` | {'int': 394} |
| `processes` | {'int': 394} |
| `pssFallbackProcesses` | {'int': 394} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
