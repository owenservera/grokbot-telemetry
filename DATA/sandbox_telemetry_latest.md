# sandbox_telemetry_parse — 2026-11-26 00:31:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2996657 lines=6638
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6623 |
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
| `chromeBrowserPssKb` | {'int': 6623} |
| `chromeGpuPssKb` | {'int': 6623} |
| `chromeOtherPssKb` | {'int': 6623} |
| `chromeProcesses` | {'int': 6623} |
| `chromeProfiles` | {'int': 6623} |
| `chromeRendererMaxPssKb` | {'int': 6623} |
| `chromeRendererPssKb` | {'int': 6623} |
| `chromeRenderers` | {'int': 6623} |
| `chromeTabs` | {'int': 6623} |
| `chromeTabsProbedProfiles` | {'int': 6623} |
| `chromeUtilityPssKb` | {'int': 6623} |
| `desktopPssKb` | {'int': 6623} |
| `hostPssKb` | {'int': 6623} |
| `kind` | {'str': 6623} |
| `memAvailableKb` | {'int': 6623} |
| `memTotalKb` | {'int': 6623} |
| `otherPssKb` | {'int': 6623} |
| `processes` | {'int': 6623} |
| `pssFallbackProcesses` | {'int': 6623} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
