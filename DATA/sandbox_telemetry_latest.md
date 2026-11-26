# sandbox_telemetry_parse — 2026-11-26 23:34:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=135859 lines=307
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 299 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

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
| `chromeBrowserPssKb` | {'int': 299} |
| `chromeGpuPssKb` | {'int': 299} |
| `chromeOtherPssKb` | {'int': 299} |
| `chromeProcesses` | {'int': 299} |
| `chromeProfiles` | {'int': 299} |
| `chromeRendererMaxPssKb` | {'int': 299} |
| `chromeRendererPssKb` | {'int': 299} |
| `chromeRenderers` | {'int': 299} |
| `chromeTabs` | {'int': 299} |
| `chromeTabsProbedProfiles` | {'int': 299} |
| `chromeUtilityPssKb` | {'int': 299} |
| `desktopPssKb` | {'int': 299} |
| `hostPssKb` | {'int': 299} |
| `kind` | {'str': 299} |
| `memAvailableKb` | {'int': 299} |
| `memTotalKb` | {'int': 299} |
| `otherPssKb` | {'int': 299} |
| `processes` | {'int': 299} |
| `pssFallbackProcesses` | {'int': 299} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
