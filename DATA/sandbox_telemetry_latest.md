# sandbox_telemetry_parse — 2026-11-24 00:09:09 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2049114 lines=4543
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4528 |
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
| `chromeBrowserPssKb` | {'int': 4528} |
| `chromeGpuPssKb` | {'int': 4528} |
| `chromeOtherPssKb` | {'int': 4528} |
| `chromeProcesses` | {'int': 4528} |
| `chromeProfiles` | {'int': 4528} |
| `chromeRendererMaxPssKb` | {'int': 4528} |
| `chromeRendererPssKb` | {'int': 4528} |
| `chromeRenderers` | {'int': 4528} |
| `chromeTabs` | {'int': 4528} |
| `chromeTabsProbedProfiles` | {'int': 4528} |
| `chromeUtilityPssKb` | {'int': 4528} |
| `desktopPssKb` | {'int': 4528} |
| `hostPssKb` | {'int': 4528} |
| `kind` | {'str': 4528} |
| `memAvailableKb` | {'int': 4528} |
| `memTotalKb` | {'int': 4528} |
| `otherPssKb` | {'int': 4528} |
| `processes` | {'int': 4528} |
| `pssFallbackProcesses` | {'int': 4528} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
