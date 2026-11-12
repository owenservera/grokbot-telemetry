# sandbox_telemetry_parse — 2026-11-12 15:41:17 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2202460 lines=4875
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4866 |
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
| `chromeBrowserPssKb` | {'int': 4866} |
| `chromeGpuPssKb` | {'int': 4866} |
| `chromeOtherPssKb` | {'int': 4866} |
| `chromeProcesses` | {'int': 4866} |
| `chromeProfiles` | {'int': 4866} |
| `chromeRendererMaxPssKb` | {'int': 4866} |
| `chromeRendererPssKb` | {'int': 4866} |
| `chromeRenderers` | {'int': 4866} |
| `chromeTabs` | {'int': 4866} |
| `chromeTabsProbedProfiles` | {'int': 4866} |
| `chromeUtilityPssKb` | {'int': 4866} |
| `desktopPssKb` | {'int': 4866} |
| `hostPssKb` | {'int': 4866} |
| `kind` | {'str': 4866} |
| `memAvailableKb` | {'int': 4866} |
| `memTotalKb` | {'int': 4866} |
| `otherPssKb` | {'int': 4866} |
| `processes` | {'int': 4866} |
| `pssFallbackProcesses` | {'int': 4866} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
