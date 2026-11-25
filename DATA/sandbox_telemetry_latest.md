# sandbox_telemetry_parse — 2026-11-25 17:29:07 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2853304 lines=6321
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6306 |
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
| `chromeBrowserPssKb` | {'int': 6306} |
| `chromeGpuPssKb` | {'int': 6306} |
| `chromeOtherPssKb` | {'int': 6306} |
| `chromeProcesses` | {'int': 6306} |
| `chromeProfiles` | {'int': 6306} |
| `chromeRendererMaxPssKb` | {'int': 6306} |
| `chromeRendererPssKb` | {'int': 6306} |
| `chromeRenderers` | {'int': 6306} |
| `chromeTabs` | {'int': 6306} |
| `chromeTabsProbedProfiles` | {'int': 6306} |
| `chromeUtilityPssKb` | {'int': 6306} |
| `desktopPssKb` | {'int': 6306} |
| `hostPssKb` | {'int': 6306} |
| `kind` | {'str': 6306} |
| `memAvailableKb` | {'int': 6306} |
| `memTotalKb` | {'int': 6306} |
| `otherPssKb` | {'int': 6306} |
| `processes` | {'int': 6306} |
| `pssFallbackProcesses` | {'int': 6306} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
