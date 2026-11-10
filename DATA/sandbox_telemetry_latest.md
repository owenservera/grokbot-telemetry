# sandbox_telemetry_parse — 2026-11-10 01:52:00 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=936269 lines=2077
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2068 |
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
| `chromeBrowserPssKb` | {'int': 2068} |
| `chromeGpuPssKb` | {'int': 2068} |
| `chromeOtherPssKb` | {'int': 2068} |
| `chromeProcesses` | {'int': 2068} |
| `chromeProfiles` | {'int': 2068} |
| `chromeRendererMaxPssKb` | {'int': 2068} |
| `chromeRendererPssKb` | {'int': 2068} |
| `chromeRenderers` | {'int': 2068} |
| `chromeTabs` | {'int': 2068} |
| `chromeTabsProbedProfiles` | {'int': 2068} |
| `chromeUtilityPssKb` | {'int': 2068} |
| `desktopPssKb` | {'int': 2068} |
| `hostPssKb` | {'int': 2068} |
| `kind` | {'str': 2068} |
| `memAvailableKb` | {'int': 2068} |
| `memTotalKb` | {'int': 2068} |
| `otherPssKb` | {'int': 2068} |
| `processes` | {'int': 2068} |
| `pssFallbackProcesses` | {'int': 2068} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
