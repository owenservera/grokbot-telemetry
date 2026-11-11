# sandbox_telemetry_parse — 2026-11-11 09:03:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1554812 lines=3444
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3435 |
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
| `chromeBrowserPssKb` | {'int': 3435} |
| `chromeGpuPssKb` | {'int': 3435} |
| `chromeOtherPssKb` | {'int': 3435} |
| `chromeProcesses` | {'int': 3435} |
| `chromeProfiles` | {'int': 3435} |
| `chromeRendererMaxPssKb` | {'int': 3435} |
| `chromeRendererPssKb` | {'int': 3435} |
| `chromeRenderers` | {'int': 3435} |
| `chromeTabs` | {'int': 3435} |
| `chromeTabsProbedProfiles` | {'int': 3435} |
| `chromeUtilityPssKb` | {'int': 3435} |
| `desktopPssKb` | {'int': 3435} |
| `hostPssKb` | {'int': 3435} |
| `kind` | {'str': 3435} |
| `memAvailableKb` | {'int': 3435} |
| `memTotalKb` | {'int': 3435} |
| `otherPssKb` | {'int': 3435} |
| `processes` | {'int': 3435} |
| `pssFallbackProcesses` | {'int': 3435} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
