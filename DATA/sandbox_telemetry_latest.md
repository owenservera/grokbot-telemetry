# sandbox_telemetry_parse — 2026-10-13 23:34:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1296089 lines=3429
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2480 |
| `chrome_profile_sample` | 941 |
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
| `chromeBrowserPssKb` | {'int': 2480} |
| `chromeGpuPssKb` | {'int': 2480} |
| `chromeOtherPssKb` | {'int': 2480} |
| `chromeProcesses` | {'int': 2480} |
| `chromeProfiles` | {'int': 2480} |
| `chromeRendererMaxPssKb` | {'int': 2480} |
| `chromeRendererPssKb` | {'int': 2480} |
| `chromeRenderers` | {'int': 2480} |
| `chromeTabs` | {'int': 2480} |
| `chromeTabsProbedProfiles` | {'int': 2480} |
| `chromeUtilityPssKb` | {'int': 2480} |
| `desktopPssKb` | {'int': 2480} |
| `hostPssKb` | {'int': 2480} |
| `kind` | {'str': 2480} |
| `memAvailableKb` | {'int': 2480} |
| `memTotalKb` | {'int': 2480} |
| `otherPssKb` | {'int': 2480} |
| `processes` | {'int': 2480} |
| `pssFallbackProcesses` | {'int': 2480} |

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
| `cpuMillicores` | {'int': 940} |
| `display` | {'int': 941} |
| `kind` | {'str': 941} |
| `processes` | {'int': 941} |
| `pssKb` | {'int': 941} |
| `rendererMaxPssKb` | {'int': 941} |
| `renderers` | {'int': 941} |
| `tabs` | {'int': 941} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
