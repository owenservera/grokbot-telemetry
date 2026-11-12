# sandbox_telemetry_parse — 2026-11-12 16:03:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2211520 lines=4895
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4886 |
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
| `chromeBrowserPssKb` | {'int': 4886} |
| `chromeGpuPssKb` | {'int': 4886} |
| `chromeOtherPssKb` | {'int': 4886} |
| `chromeProcesses` | {'int': 4886} |
| `chromeProfiles` | {'int': 4886} |
| `chromeRendererMaxPssKb` | {'int': 4886} |
| `chromeRendererPssKb` | {'int': 4886} |
| `chromeRenderers` | {'int': 4886} |
| `chromeTabs` | {'int': 4886} |
| `chromeTabsProbedProfiles` | {'int': 4886} |
| `chromeUtilityPssKb` | {'int': 4886} |
| `desktopPssKb` | {'int': 4886} |
| `hostPssKb` | {'int': 4886} |
| `kind` | {'str': 4886} |
| `memAvailableKb` | {'int': 4886} |
| `memTotalKb` | {'int': 4886} |
| `otherPssKb` | {'int': 4886} |
| `processes` | {'int': 4886} |
| `pssFallbackProcesses` | {'int': 4886} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
