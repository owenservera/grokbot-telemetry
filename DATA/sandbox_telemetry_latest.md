# sandbox_telemetry_parse — 2026-11-12 13:12:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2142211 lines=4742
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4733 |
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
| `chromeBrowserPssKb` | {'int': 4733} |
| `chromeGpuPssKb` | {'int': 4733} |
| `chromeOtherPssKb` | {'int': 4733} |
| `chromeProcesses` | {'int': 4733} |
| `chromeProfiles` | {'int': 4733} |
| `chromeRendererMaxPssKb` | {'int': 4733} |
| `chromeRendererPssKb` | {'int': 4733} |
| `chromeRenderers` | {'int': 4733} |
| `chromeTabs` | {'int': 4733} |
| `chromeTabsProbedProfiles` | {'int': 4733} |
| `chromeUtilityPssKb` | {'int': 4733} |
| `desktopPssKb` | {'int': 4733} |
| `hostPssKb` | {'int': 4733} |
| `kind` | {'str': 4733} |
| `memAvailableKb` | {'int': 4733} |
| `memTotalKb` | {'int': 4733} |
| `otherPssKb` | {'int': 4733} |
| `processes` | {'int': 4733} |
| `pssFallbackProcesses` | {'int': 4733} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
