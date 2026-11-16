# sandbox_telemetry_parse — 2026-11-16 18:25:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=73364 lines=168
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 161 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
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
| `chromeBrowserPssKb` | {'int': 161} |
| `chromeGpuPssKb` | {'int': 161} |
| `chromeOtherPssKb` | {'int': 161} |
| `chromeProcesses` | {'int': 161} |
| `chromeProfiles` | {'int': 161} |
| `chromeRendererMaxPssKb` | {'int': 161} |
| `chromeRendererPssKb` | {'int': 161} |
| `chromeRenderers` | {'int': 161} |
| `chromeTabs` | {'int': 161} |
| `chromeTabsProbedProfiles` | {'int': 161} |
| `chromeUtilityPssKb` | {'int': 161} |
| `desktopPssKb` | {'int': 161} |
| `hostPssKb` | {'int': 161} |
| `kind` | {'str': 161} |
| `memAvailableKb` | {'int': 161} |
| `memTotalKb` | {'int': 161} |
| `otherPssKb` | {'int': 161} |
| `processes` | {'int': 161} |
| `pssFallbackProcesses` | {'int': 161} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
