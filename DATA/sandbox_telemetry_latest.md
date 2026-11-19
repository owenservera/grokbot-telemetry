# sandbox_telemetry_parse — 2026-11-19 20:26:06 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1430446 lines=3172
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3161 |
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
| `chromeBrowserPssKb` | {'int': 3161} |
| `chromeGpuPssKb` | {'int': 3161} |
| `chromeOtherPssKb` | {'int': 3161} |
| `chromeProcesses` | {'int': 3161} |
| `chromeProfiles` | {'int': 3161} |
| `chromeRendererMaxPssKb` | {'int': 3161} |
| `chromeRendererPssKb` | {'int': 3161} |
| `chromeRenderers` | {'int': 3161} |
| `chromeTabs` | {'int': 3161} |
| `chromeTabsProbedProfiles` | {'int': 3161} |
| `chromeUtilityPssKb` | {'int': 3161} |
| `desktopPssKb` | {'int': 3161} |
| `hostPssKb` | {'int': 3161} |
| `kind` | {'str': 3161} |
| `memAvailableKb` | {'int': 3161} |
| `memTotalKb` | {'int': 3161} |
| `otherPssKb` | {'int': 3161} |
| `processes` | {'int': 3161} |
| `pssFallbackProcesses` | {'int': 3161} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
