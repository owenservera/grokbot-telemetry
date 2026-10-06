# sandbox_telemetry_parse — 2026-10-06 20:16:13 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=579770 lines=1276
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1271 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `chromeBrowserPssKb` | {'int': 1271} |
| `chromeGpuPssKb` | {'int': 1271} |
| `chromeOtherPssKb` | {'int': 1271} |
| `chromeProcesses` | {'int': 1271} |
| `chromeProfiles` | {'int': 1271} |
| `chromeRendererMaxPssKb` | {'int': 1271} |
| `chromeRendererPssKb` | {'int': 1271} |
| `chromeRenderers` | {'int': 1271} |
| `chromeTabs` | {'int': 1271} |
| `chromeTabsProbedProfiles` | {'int': 1271} |
| `chromeUtilityPssKb` | {'int': 1271} |
| `desktopPssKb` | {'int': 1271} |
| `hostPssKb` | {'int': 1271} |
| `kind` | {'str': 1271} |
| `memAvailableKb` | {'int': 1271} |
| `memTotalKb` | {'int': 1271} |
| `otherPssKb` | {'int': 1271} |
| `processes` | {'int': 1271} |
| `pssFallbackProcesses` | {'int': 1271} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
