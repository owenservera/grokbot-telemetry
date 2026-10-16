# sandbox_telemetry_parse — 2026-10-16 23:30:09 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=921039 lines=3442
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2282 |
| `memory_sample` | 1151 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1151} |
| `chromeGpuPssKb` | {'int': 1151} |
| `chromeOtherPssKb` | {'int': 1151} |
| `chromeProcesses` | {'int': 1151} |
| `chromeProfiles` | {'int': 1151} |
| `chromeRendererMaxPssKb` | {'int': 1151} |
| `chromeRendererPssKb` | {'int': 1151} |
| `chromeRenderers` | {'int': 1151} |
| `chromeTabs` | {'int': 1151} |
| `chromeTabsProbedProfiles` | {'int': 1151} |
| `chromeUtilityPssKb` | {'int': 1151} |
| `desktopPssKb` | {'int': 1151} |
| `hostPssKb` | {'int': 1151} |
| `kind` | {'str': 1151} |
| `memAvailableKb` | {'int': 1151} |
| `memTotalKb` | {'int': 1151} |
| `otherPssKb` | {'int': 1151} |
| `processes` | {'int': 1151} |
| `pssFallbackProcesses` | {'int': 1151} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 2279} |
| `display` | {'int': 2282} |
| `kind` | {'str': 2282} |
| `processes` | {'int': 2282} |
| `pssKb` | {'int': 2282} |
| `rendererMaxPssKb` | {'int': 2282} |
| `renderers` | {'int': 2282} |
| `tabs` | {'int': 2281} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
