# sandbox_telemetry_parse — 2026-11-10 01:26:20 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=924492 lines=2051
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2042 |
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
| `chromeBrowserPssKb` | {'int': 2042} |
| `chromeGpuPssKb` | {'int': 2042} |
| `chromeOtherPssKb` | {'int': 2042} |
| `chromeProcesses` | {'int': 2042} |
| `chromeProfiles` | {'int': 2042} |
| `chromeRendererMaxPssKb` | {'int': 2042} |
| `chromeRendererPssKb` | {'int': 2042} |
| `chromeRenderers` | {'int': 2042} |
| `chromeTabs` | {'int': 2042} |
| `chromeTabsProbedProfiles` | {'int': 2042} |
| `chromeUtilityPssKb` | {'int': 2042} |
| `desktopPssKb` | {'int': 2042} |
| `hostPssKb` | {'int': 2042} |
| `kind` | {'str': 2042} |
| `memAvailableKb` | {'int': 2042} |
| `memTotalKb` | {'int': 2042} |
| `otherPssKb` | {'int': 2042} |
| `processes` | {'int': 2042} |
| `pssFallbackProcesses` | {'int': 2042} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
