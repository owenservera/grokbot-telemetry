# sandbox_telemetry_parse — 2026-10-13 21:44:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1235445 lines=3239
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2385 |
| `chrome_profile_sample` | 846 |
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
| `chromeBrowserPssKb` | {'int': 2385} |
| `chromeGpuPssKb` | {'int': 2385} |
| `chromeOtherPssKb` | {'int': 2385} |
| `chromeProcesses` | {'int': 2385} |
| `chromeProfiles` | {'int': 2385} |
| `chromeRendererMaxPssKb` | {'int': 2385} |
| `chromeRendererPssKb` | {'int': 2385} |
| `chromeRenderers` | {'int': 2385} |
| `chromeTabs` | {'int': 2385} |
| `chromeTabsProbedProfiles` | {'int': 2385} |
| `chromeUtilityPssKb` | {'int': 2385} |
| `desktopPssKb` | {'int': 2385} |
| `hostPssKb` | {'int': 2385} |
| `kind` | {'str': 2385} |
| `memAvailableKb` | {'int': 2385} |
| `memTotalKb` | {'int': 2385} |
| `otherPssKb` | {'int': 2385} |
| `processes` | {'int': 2385} |
| `pssFallbackProcesses` | {'int': 2385} |

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
| `cpuMillicores` | {'int': 845} |
| `display` | {'int': 846} |
| `kind` | {'str': 846} |
| `processes` | {'int': 846} |
| `pssKb` | {'int': 846} |
| `rendererMaxPssKb` | {'int': 846} |
| `renderers` | {'int': 846} |
| `tabs` | {'int': 846} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
