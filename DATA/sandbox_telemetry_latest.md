# sandbox_telemetry_parse — 2026-11-12 21:22:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2336072 lines=5170
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5161 |
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
| `chromeBrowserPssKb` | {'int': 5161} |
| `chromeGpuPssKb` | {'int': 5161} |
| `chromeOtherPssKb` | {'int': 5161} |
| `chromeProcesses` | {'int': 5161} |
| `chromeProfiles` | {'int': 5161} |
| `chromeRendererMaxPssKb` | {'int': 5161} |
| `chromeRendererPssKb` | {'int': 5161} |
| `chromeRenderers` | {'int': 5161} |
| `chromeTabs` | {'int': 5161} |
| `chromeTabsProbedProfiles` | {'int': 5161} |
| `chromeUtilityPssKb` | {'int': 5161} |
| `desktopPssKb` | {'int': 5161} |
| `hostPssKb` | {'int': 5161} |
| `kind` | {'str': 5161} |
| `memAvailableKb` | {'int': 5161} |
| `memTotalKb` | {'int': 5161} |
| `otherPssKb` | {'int': 5161} |
| `processes` | {'int': 5161} |
| `pssFallbackProcesses` | {'int': 5161} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
