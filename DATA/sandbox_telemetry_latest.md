# sandbox_telemetry_parse — 2026-11-10 18:12:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1259872 lines=2792
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2783 |
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
| `chromeBrowserPssKb` | {'int': 2783} |
| `chromeGpuPssKb` | {'int': 2783} |
| `chromeOtherPssKb` | {'int': 2783} |
| `chromeProcesses` | {'int': 2783} |
| `chromeProfiles` | {'int': 2783} |
| `chromeRendererMaxPssKb` | {'int': 2783} |
| `chromeRendererPssKb` | {'int': 2783} |
| `chromeRenderers` | {'int': 2783} |
| `chromeTabs` | {'int': 2783} |
| `chromeTabsProbedProfiles` | {'int': 2783} |
| `chromeUtilityPssKb` | {'int': 2783} |
| `desktopPssKb` | {'int': 2783} |
| `hostPssKb` | {'int': 2783} |
| `kind` | {'str': 2783} |
| `memAvailableKb` | {'int': 2783} |
| `memTotalKb` | {'int': 2783} |
| `otherPssKb` | {'int': 2783} |
| `processes` | {'int': 2783} |
| `pssFallbackProcesses` | {'int': 2783} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
