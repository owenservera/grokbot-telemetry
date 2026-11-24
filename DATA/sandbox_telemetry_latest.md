# sandbox_telemetry_parse — 2026-11-24 20:14:49 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2432280 lines=5390
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5375 |
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
| `chromeBrowserPssKb` | {'int': 5375} |
| `chromeGpuPssKb` | {'int': 5375} |
| `chromeOtherPssKb` | {'int': 5375} |
| `chromeProcesses` | {'int': 5375} |
| `chromeProfiles` | {'int': 5375} |
| `chromeRendererMaxPssKb` | {'int': 5375} |
| `chromeRendererPssKb` | {'int': 5375} |
| `chromeRenderers` | {'int': 5375} |
| `chromeTabs` | {'int': 5375} |
| `chromeTabsProbedProfiles` | {'int': 5375} |
| `chromeUtilityPssKb` | {'int': 5375} |
| `desktopPssKb` | {'int': 5375} |
| `hostPssKb` | {'int': 5375} |
| `kind` | {'str': 5375} |
| `memAvailableKb` | {'int': 5375} |
| `memTotalKb` | {'int': 5375} |
| `otherPssKb` | {'int': 5375} |
| `processes` | {'int': 5375} |
| `pssFallbackProcesses` | {'int': 5375} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
