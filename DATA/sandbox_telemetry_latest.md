# sandbox_telemetry_parse — 2026-10-13 10:10:33 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1002493 lines=2509
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2020 |
| `chrome_profile_sample` | 481 |
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
| `chromeBrowserPssKb` | {'int': 2020} |
| `chromeGpuPssKb` | {'int': 2020} |
| `chromeOtherPssKb` | {'int': 2020} |
| `chromeProcesses` | {'int': 2020} |
| `chromeProfiles` | {'int': 2020} |
| `chromeRendererMaxPssKb` | {'int': 2020} |
| `chromeRendererPssKb` | {'int': 2020} |
| `chromeRenderers` | {'int': 2020} |
| `chromeTabs` | {'int': 2020} |
| `chromeTabsProbedProfiles` | {'int': 2020} |
| `chromeUtilityPssKb` | {'int': 2020} |
| `desktopPssKb` | {'int': 2020} |
| `hostPssKb` | {'int': 2020} |
| `kind` | {'str': 2020} |
| `memAvailableKb` | {'int': 2020} |
| `memTotalKb` | {'int': 2020} |
| `otherPssKb` | {'int': 2020} |
| `processes` | {'int': 2020} |
| `pssFallbackProcesses` | {'int': 2020} |

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
| `cpuMillicores` | {'int': 480} |
| `display` | {'int': 481} |
| `kind` | {'str': 481} |
| `processes` | {'int': 481} |
| `pssKb` | {'int': 481} |
| `rendererMaxPssKb` | {'int': 481} |
| `renderers` | {'int': 481} |
| `tabs` | {'int': 481} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
