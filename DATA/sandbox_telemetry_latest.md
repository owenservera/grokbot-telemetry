# sandbox_telemetry_parse — 2026-10-13 19:58:06 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1207977 lines=3153
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2342 |
| `chrome_profile_sample` | 803 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 2342} |
| `chromeGpuPssKb` | {'int': 2342} |
| `chromeOtherPssKb` | {'int': 2342} |
| `chromeProcesses` | {'int': 2342} |
| `chromeProfiles` | {'int': 2342} |
| `chromeRendererMaxPssKb` | {'int': 2342} |
| `chromeRendererPssKb` | {'int': 2342} |
| `chromeRenderers` | {'int': 2342} |
| `chromeTabs` | {'int': 2342} |
| `chromeTabsProbedProfiles` | {'int': 2342} |
| `chromeUtilityPssKb` | {'int': 2342} |
| `desktopPssKb` | {'int': 2342} |
| `hostPssKb` | {'int': 2342} |
| `kind` | {'str': 2342} |
| `memAvailableKb` | {'int': 2342} |
| `memTotalKb` | {'int': 2342} |
| `otherPssKb` | {'int': 2342} |
| `processes` | {'int': 2342} |
| `pssFallbackProcesses` | {'int': 2342} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 802} |
| `display` | {'int': 803} |
| `kind` | {'str': 803} |
| `processes` | {'int': 803} |
| `pssKb` | {'int': 803} |
| `rendererMaxPssKb` | {'int': 803} |
| `renderers` | {'int': 803} |
| `tabs` | {'int': 803} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
