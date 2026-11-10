# sandbox_telemetry_parse — 2026-11-10 01:16:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=919972 lines=2041
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2032 |
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
| `chromeBrowserPssKb` | {'int': 2032} |
| `chromeGpuPssKb` | {'int': 2032} |
| `chromeOtherPssKb` | {'int': 2032} |
| `chromeProcesses` | {'int': 2032} |
| `chromeProfiles` | {'int': 2032} |
| `chromeRendererMaxPssKb` | {'int': 2032} |
| `chromeRendererPssKb` | {'int': 2032} |
| `chromeRenderers` | {'int': 2032} |
| `chromeTabs` | {'int': 2032} |
| `chromeTabsProbedProfiles` | {'int': 2032} |
| `chromeUtilityPssKb` | {'int': 2032} |
| `desktopPssKb` | {'int': 2032} |
| `hostPssKb` | {'int': 2032} |
| `kind` | {'str': 2032} |
| `memAvailableKb` | {'int': 2032} |
| `memTotalKb` | {'int': 2032} |
| `otherPssKb` | {'int': 2032} |
| `processes` | {'int': 2032} |
| `pssFallbackProcesses` | {'int': 2032} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
