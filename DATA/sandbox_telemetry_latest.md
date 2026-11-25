# sandbox_telemetry_parse — 2026-11-25 15:03:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2804459 lines=6213
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6198 |
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
| `chromeBrowserPssKb` | {'int': 6198} |
| `chromeGpuPssKb` | {'int': 6198} |
| `chromeOtherPssKb` | {'int': 6198} |
| `chromeProcesses` | {'int': 6198} |
| `chromeProfiles` | {'int': 6198} |
| `chromeRendererMaxPssKb` | {'int': 6198} |
| `chromeRendererPssKb` | {'int': 6198} |
| `chromeRenderers` | {'int': 6198} |
| `chromeTabs` | {'int': 6198} |
| `chromeTabsProbedProfiles` | {'int': 6198} |
| `chromeUtilityPssKb` | {'int': 6198} |
| `desktopPssKb` | {'int': 6198} |
| `hostPssKb` | {'int': 6198} |
| `kind` | {'str': 6198} |
| `memAvailableKb` | {'int': 6198} |
| `memTotalKb` | {'int': 6198} |
| `otherPssKb` | {'int': 6198} |
| `processes` | {'int': 6198} |
| `pssFallbackProcesses` | {'int': 6198} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
