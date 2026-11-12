# sandbox_telemetry_parse — 2026-11-12 12:38:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2131805 lines=4719
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4710 |
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
| `chromeBrowserPssKb` | {'int': 4710} |
| `chromeGpuPssKb` | {'int': 4710} |
| `chromeOtherPssKb` | {'int': 4710} |
| `chromeProcesses` | {'int': 4710} |
| `chromeProfiles` | {'int': 4710} |
| `chromeRendererMaxPssKb` | {'int': 4710} |
| `chromeRendererPssKb` | {'int': 4710} |
| `chromeRenderers` | {'int': 4710} |
| `chromeTabs` | {'int': 4710} |
| `chromeTabsProbedProfiles` | {'int': 4710} |
| `chromeUtilityPssKb` | {'int': 4710} |
| `desktopPssKb` | {'int': 4710} |
| `hostPssKb` | {'int': 4710} |
| `kind` | {'str': 4710} |
| `memAvailableKb` | {'int': 4710} |
| `memTotalKb` | {'int': 4710} |
| `otherPssKb` | {'int': 4710} |
| `processes` | {'int': 4710} |
| `pssFallbackProcesses` | {'int': 4710} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
