# sandbox_telemetry_parse — 2026-11-18 08:00:57 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=739854 lines=1642
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1635 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

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
| `chromeBrowserPssKb` | {'int': 1635} |
| `chromeGpuPssKb` | {'int': 1635} |
| `chromeOtherPssKb` | {'int': 1635} |
| `chromeProcesses` | {'int': 1635} |
| `chromeProfiles` | {'int': 1635} |
| `chromeRendererMaxPssKb` | {'int': 1635} |
| `chromeRendererPssKb` | {'int': 1635} |
| `chromeRenderers` | {'int': 1635} |
| `chromeTabs` | {'int': 1635} |
| `chromeTabsProbedProfiles` | {'int': 1635} |
| `chromeUtilityPssKb` | {'int': 1635} |
| `desktopPssKb` | {'int': 1635} |
| `hostPssKb` | {'int': 1635} |
| `kind` | {'str': 1635} |
| `memAvailableKb` | {'int': 1635} |
| `memTotalKb` | {'int': 1635} |
| `otherPssKb` | {'int': 1635} |
| `processes` | {'int': 1635} |
| `pssFallbackProcesses` | {'int': 1635} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
