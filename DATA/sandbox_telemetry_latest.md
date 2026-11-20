# sandbox_telemetry_parse — 2026-11-20 15:11:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1769571 lines=3922
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3911 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3911} |
| `chromeGpuPssKb` | {'int': 3911} |
| `chromeOtherPssKb` | {'int': 3911} |
| `chromeProcesses` | {'int': 3911} |
| `chromeProfiles` | {'int': 3911} |
| `chromeRendererMaxPssKb` | {'int': 3911} |
| `chromeRendererPssKb` | {'int': 3911} |
| `chromeRenderers` | {'int': 3911} |
| `chromeTabs` | {'int': 3911} |
| `chromeTabsProbedProfiles` | {'int': 3911} |
| `chromeUtilityPssKb` | {'int': 3911} |
| `desktopPssKb` | {'int': 3911} |
| `hostPssKb` | {'int': 3911} |
| `kind` | {'str': 3911} |
| `memAvailableKb` | {'int': 3911} |
| `memTotalKb` | {'int': 3911} |
| `otherPssKb` | {'int': 3911} |
| `processes` | {'int': 3911} |
| `pssFallbackProcesses` | {'int': 3911} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
