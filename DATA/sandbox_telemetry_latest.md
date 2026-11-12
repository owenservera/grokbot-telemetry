# sandbox_telemetry_parse — 2026-11-12 06:33:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2007379 lines=4444
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4435 |
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
| `chromeBrowserPssKb` | {'int': 4435} |
| `chromeGpuPssKb` | {'int': 4435} |
| `chromeOtherPssKb` | {'int': 4435} |
| `chromeProcesses` | {'int': 4435} |
| `chromeProfiles` | {'int': 4435} |
| `chromeRendererMaxPssKb` | {'int': 4435} |
| `chromeRendererPssKb` | {'int': 4435} |
| `chromeRenderers` | {'int': 4435} |
| `chromeTabs` | {'int': 4435} |
| `chromeTabsProbedProfiles` | {'int': 4435} |
| `chromeUtilityPssKb` | {'int': 4435} |
| `desktopPssKb` | {'int': 4435} |
| `hostPssKb` | {'int': 4435} |
| `kind` | {'str': 4435} |
| `memAvailableKb` | {'int': 4435} |
| `memTotalKb` | {'int': 4435} |
| `otherPssKb` | {'int': 4435} |
| `processes` | {'int': 4435} |
| `pssFallbackProcesses` | {'int': 4435} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
