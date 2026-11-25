# sandbox_telemetry_parse — 2026-11-25 11:53:51 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2746134 lines=6084
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6069 |
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
| `chromeBrowserPssKb` | {'int': 6069} |
| `chromeGpuPssKb` | {'int': 6069} |
| `chromeOtherPssKb` | {'int': 6069} |
| `chromeProcesses` | {'int': 6069} |
| `chromeProfiles` | {'int': 6069} |
| `chromeRendererMaxPssKb` | {'int': 6069} |
| `chromeRendererPssKb` | {'int': 6069} |
| `chromeRenderers` | {'int': 6069} |
| `chromeTabs` | {'int': 6069} |
| `chromeTabsProbedProfiles` | {'int': 6069} |
| `chromeUtilityPssKb` | {'int': 6069} |
| `desktopPssKb` | {'int': 6069} |
| `hostPssKb` | {'int': 6069} |
| `kind` | {'str': 6069} |
| `memAvailableKb` | {'int': 6069} |
| `memTotalKb` | {'int': 6069} |
| `otherPssKb` | {'int': 6069} |
| `processes` | {'int': 6069} |
| `pssFallbackProcesses` | {'int': 6069} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
