# sandbox_telemetry_parse — 2026-11-10 17:46:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1249906 lines=2770
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2761 |
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
| `chromeBrowserPssKb` | {'int': 2761} |
| `chromeGpuPssKb` | {'int': 2761} |
| `chromeOtherPssKb` | {'int': 2761} |
| `chromeProcesses` | {'int': 2761} |
| `chromeProfiles` | {'int': 2761} |
| `chromeRendererMaxPssKb` | {'int': 2761} |
| `chromeRendererPssKb` | {'int': 2761} |
| `chromeRenderers` | {'int': 2761} |
| `chromeTabs` | {'int': 2761} |
| `chromeTabsProbedProfiles` | {'int': 2761} |
| `chromeUtilityPssKb` | {'int': 2761} |
| `desktopPssKb` | {'int': 2761} |
| `hostPssKb` | {'int': 2761} |
| `kind` | {'str': 2761} |
| `memAvailableKb` | {'int': 2761} |
| `memTotalKb` | {'int': 2761} |
| `otherPssKb` | {'int': 2761} |
| `processes` | {'int': 2761} |
| `pssFallbackProcesses` | {'int': 2761} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
