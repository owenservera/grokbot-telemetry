# sandbox_telemetry_parse — 2026-11-24 12:11:11 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2278365 lines=5050
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5035 |
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
| `chromeBrowserPssKb` | {'int': 5035} |
| `chromeGpuPssKb` | {'int': 5035} |
| `chromeOtherPssKb` | {'int': 5035} |
| `chromeProcesses` | {'int': 5035} |
| `chromeProfiles` | {'int': 5035} |
| `chromeRendererMaxPssKb` | {'int': 5035} |
| `chromeRendererPssKb` | {'int': 5035} |
| `chromeRenderers` | {'int': 5035} |
| `chromeTabs` | {'int': 5035} |
| `chromeTabsProbedProfiles` | {'int': 5035} |
| `chromeUtilityPssKb` | {'int': 5035} |
| `desktopPssKb` | {'int': 5035} |
| `hostPssKb` | {'int': 5035} |
| `kind` | {'str': 5035} |
| `memAvailableKb` | {'int': 5035} |
| `memTotalKb` | {'int': 5035} |
| `otherPssKb` | {'int': 5035} |
| `processes` | {'int': 5035} |
| `pssFallbackProcesses` | {'int': 5035} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
