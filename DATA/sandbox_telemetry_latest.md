# sandbox_telemetry_parse — 2026-11-12 01:37:24 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1912813 lines=4235
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4226 |
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
| `chromeBrowserPssKb` | {'int': 4226} |
| `chromeGpuPssKb` | {'int': 4226} |
| `chromeOtherPssKb` | {'int': 4226} |
| `chromeProcesses` | {'int': 4226} |
| `chromeProfiles` | {'int': 4226} |
| `chromeRendererMaxPssKb` | {'int': 4226} |
| `chromeRendererPssKb` | {'int': 4226} |
| `chromeRenderers` | {'int': 4226} |
| `chromeTabs` | {'int': 4226} |
| `chromeTabsProbedProfiles` | {'int': 4226} |
| `chromeUtilityPssKb` | {'int': 4226} |
| `desktopPssKb` | {'int': 4226} |
| `hostPssKb` | {'int': 4226} |
| `kind` | {'str': 4226} |
| `memAvailableKb` | {'int': 4226} |
| `memTotalKb` | {'int': 4226} |
| `otherPssKb` | {'int': 4226} |
| `processes` | {'int': 4226} |
| `pssFallbackProcesses` | {'int': 4226} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
