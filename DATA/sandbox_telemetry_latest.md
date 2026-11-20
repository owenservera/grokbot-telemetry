# sandbox_telemetry_parse — 2026-11-20 12:13:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1708044 lines=3786
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3775 |
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
| `chromeBrowserPssKb` | {'int': 3775} |
| `chromeGpuPssKb` | {'int': 3775} |
| `chromeOtherPssKb` | {'int': 3775} |
| `chromeProcesses` | {'int': 3775} |
| `chromeProfiles` | {'int': 3775} |
| `chromeRendererMaxPssKb` | {'int': 3775} |
| `chromeRendererPssKb` | {'int': 3775} |
| `chromeRenderers` | {'int': 3775} |
| `chromeTabs` | {'int': 3775} |
| `chromeTabsProbedProfiles` | {'int': 3775} |
| `chromeUtilityPssKb` | {'int': 3775} |
| `desktopPssKb` | {'int': 3775} |
| `hostPssKb` | {'int': 3775} |
| `kind` | {'str': 3775} |
| `memAvailableKb` | {'int': 3775} |
| `memTotalKb` | {'int': 3775} |
| `otherPssKb` | {'int': 3775} |
| `processes` | {'int': 3775} |
| `pssFallbackProcesses` | {'int': 3775} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
