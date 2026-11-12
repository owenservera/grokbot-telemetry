# sandbox_telemetry_parse — 2026-11-12 14:10:38 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2164861 lines=4792
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4783 |
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
| `chromeBrowserPssKb` | {'int': 4783} |
| `chromeGpuPssKb` | {'int': 4783} |
| `chromeOtherPssKb` | {'int': 4783} |
| `chromeProcesses` | {'int': 4783} |
| `chromeProfiles` | {'int': 4783} |
| `chromeRendererMaxPssKb` | {'int': 4783} |
| `chromeRendererPssKb` | {'int': 4783} |
| `chromeRenderers` | {'int': 4783} |
| `chromeTabs` | {'int': 4783} |
| `chromeTabsProbedProfiles` | {'int': 4783} |
| `chromeUtilityPssKb` | {'int': 4783} |
| `desktopPssKb` | {'int': 4783} |
| `hostPssKb` | {'int': 4783} |
| `kind` | {'str': 4783} |
| `memAvailableKb` | {'int': 4783} |
| `memTotalKb` | {'int': 4783} |
| `otherPssKb` | {'int': 4783} |
| `processes` | {'int': 4783} |
| `pssFallbackProcesses` | {'int': 4783} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
