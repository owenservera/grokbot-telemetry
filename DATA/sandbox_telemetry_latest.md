# sandbox_telemetry_parse — 2026-11-11 13:11:44 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1645330 lines=3644
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3635 |
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
| `chromeBrowserPssKb` | {'int': 3635} |
| `chromeGpuPssKb` | {'int': 3635} |
| `chromeOtherPssKb` | {'int': 3635} |
| `chromeProcesses` | {'int': 3635} |
| `chromeProfiles` | {'int': 3635} |
| `chromeRendererMaxPssKb` | {'int': 3635} |
| `chromeRendererPssKb` | {'int': 3635} |
| `chromeRenderers` | {'int': 3635} |
| `chromeTabs` | {'int': 3635} |
| `chromeTabsProbedProfiles` | {'int': 3635} |
| `chromeUtilityPssKb` | {'int': 3635} |
| `desktopPssKb` | {'int': 3635} |
| `hostPssKb` | {'int': 3635} |
| `kind` | {'str': 3635} |
| `memAvailableKb` | {'int': 3635} |
| `memTotalKb` | {'int': 3635} |
| `otherPssKb` | {'int': 3635} |
| `processes` | {'int': 3635} |
| `pssFallbackProcesses` | {'int': 3635} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
