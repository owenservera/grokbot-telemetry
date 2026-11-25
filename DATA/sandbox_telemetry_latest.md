# sandbox_telemetry_parse — 2026-11-26 00:14:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2989873 lines=6623
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6608 |
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
| `chromeBrowserPssKb` | {'int': 6608} |
| `chromeGpuPssKb` | {'int': 6608} |
| `chromeOtherPssKb` | {'int': 6608} |
| `chromeProcesses` | {'int': 6608} |
| `chromeProfiles` | {'int': 6608} |
| `chromeRendererMaxPssKb` | {'int': 6608} |
| `chromeRendererPssKb` | {'int': 6608} |
| `chromeRenderers` | {'int': 6608} |
| `chromeTabs` | {'int': 6608} |
| `chromeTabsProbedProfiles` | {'int': 6608} |
| `chromeUtilityPssKb` | {'int': 6608} |
| `desktopPssKb` | {'int': 6608} |
| `hostPssKb` | {'int': 6608} |
| `kind` | {'str': 6608} |
| `memAvailableKb` | {'int': 6608} |
| `memTotalKb` | {'int': 6608} |
| `otherPssKb` | {'int': 6608} |
| `processes` | {'int': 6608} |
| `pssFallbackProcesses` | {'int': 6608} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
